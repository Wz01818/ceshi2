<template>
  <div>
    <!-- 新建协同 -->
    <div style="margin: 10px 0">
      <el-button type="primary" @click="handleAdd">新建协同 <i class="el-icon-circle-plus-outline"></i></el-button>
    </div>

    <!-- 待发协同 -->
    <div style="margin: 10px 0">
      <h3>待发协同</h3>
      <el-table :data="pendingData" border stripe @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="55"></el-table-column>
        <el-table-column prop="id" label="ID" width="80" sortable></el-table-column>
        <el-table-column prop="title" label="协同标题"></el-table-column>
        <el-table-column prop="receiver" label="接收人"></el-table-column>
        <el-table-column prop="content" label="协同内容"></el-table-column>
        <el-table-column prop="createTime" label="发起时间"></el-table-column>
        <el-table-column label="操作" width="180" align="center">
          <template slot-scope="scope">
            <el-button type="primary" @click="send(scope.row.id)">发送</el-button>
            <el-button type="warning" @click="edit(scope.row.id)">编辑</el-button>
            <el-button type="danger" @click="del(scope.row.id)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
    </div>

    <!-- 已发协同 -->
    <div style="margin: 10px 0">
      <h3>已发协同</h3>
      <el-table :data="sentData" border stripe @row-dblclick="viewContent">
        <el-table-column type="selection" width="55"></el-table-column>
        <el-table-column prop="id" label="ID" width="80" sortable></el-table-column>
        <el-table-column prop="title" label="协同标题"></el-table-column>
        <el-table-column prop="receiver" label="接收人"></el-table-column>
        <el-table-column prop="content" label="协同内容"></el-table-column>
        <el-table-column prop="createTime" label="发起时间"></el-table-column>
        <el-table-column label="操作" width="180" align="center">
          <template slot-scope="scope">
            <el-button type="primary" @click="forward(scope.row.id)">转发</el-button>
            <el-button type="danger" @click="del(scope.row.id)">删除</el-button>
            <el-button type="warning" @click="revoke(scope.row.id)">撤销</el-button>
          </template>
        </el-table-column>
      </el-table>
    </div>

    <!-- 待办协同 -->
    <div style="margin: 10px 0">
      <h3>待办协同</h3>
      <el-table :data="todoData" border stripe @row-dblclick="handleTask">
        <el-table-column type="selection" width="55"></el-table-column>
        <el-table-column prop="id" label="ID" width="80" sortable></el-table-column>
        <el-table-column prop="title" label="协同标题"></el-table-column>
        <el-table-column prop="sender" label="发起人"></el-table-column>
        <el-table-column prop="content" label="协同内容"></el-table-column>
        <el-table-column prop="createTime" label="发起时间"></el-table-column>
        <el-table-column label="操作" width="180" align="center">
          <template slot-scope="scope">
            <el-button type="primary" @click="forward(scope.row.id)">转发</el-button>
            <el-button type="danger" @click="del(scope.row.id)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
    </div>

    <!-- 新建/编辑协同对话框 -->
    <el-dialog title="协同" :visible.sync="dialogFormVisible" width="40%" :close-on-click-modal="false">
      <el-form label-width="140px" size="small" style="width: 85%;" :model="form" :rules="rules" ref="ruleForm">
        <el-form-item prop="title" label="协同标题">
          <el-input v-model="form.title" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item prop="receiver" label="接收人">
          <el-input v-model="form.receiver" autocomplete="on"></el-input>
        </el-form-item>
        <el-form-item prop="attachment" label="上传附件">
          <el-upload ref="file" :action="uploadUrl" :on-success="handleUploadSuccess" :file-list="fileList">
            <el-button size="small" type="primary">点击上传</el-button>
          </el-upload>
        </el-form-item>
        <el-form-item prop="content" label="协同内容">
          <el-input type="textarea" :rows="5" v-model="form.content"></el-input>
        </el-form-item>
        <el-form-item prop="remark" label="附言">
          <el-input v-model="form.remark" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item prop="createTime" label="发起时间">
          <el-date-picker v-model="form.createTime" type="datetime" placeholder="选择日期时间"></el-date-picker>
        </el-form-item>
        <el-form-item prop="currentHandler" label="当前待办人">
          <el-input v-model="form.currentHandler" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取消</el-button>
        <el-button type="primary" @click="save('待发')">保存待发</el-button>
        <el-button type="primary" @click="save('发送')">发送</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: "youjian",
  data() {
    return {
      pendingData: [],
      sentData: [],
      todoData: [],
      form: {},
      dialogFormVisible: false,
      multipleSelection: [],
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {},
      uploadUrl: '/upload', // 上传附件的接口
      fileList: [],
      rules: {
        title: [
          { required: true, message: '请输入协同标题', trigger: 'blur' }
        ],
        receiver: [
          { required: true, message: '请输入接收人', trigger: 'blur' }
        ],
        content: [
          { required: true, message: '请输入协同内容', trigger: 'blur' }
        ],
        createTime: [
          { type: 'date', required: true, message: '请选择发起时间', trigger: 'change' }
        ],
        currentHandler: [
          { required: true, message: '请输入当前待办人', trigger: 'blur' }
        ]
      }
    }
  },
  created() {
    this.loadPending()
    this.loadSent()
    this.loadTodo()
  },
  methods: {
    loadPending() {
      // 加载待发协同
      this.request.get("/youjian/pending", {
        params: {
          userid: this.user.id,
        }
      }).then(res => {
        this.pendingData = res.data.records
      })
    },
    loadSent() {
      // 加载已发协同
      this.request.get("/youjian/sent", {
        params: {
          userid: this.user.id,
        }
      }).then(res => {
        this.sentData = res.data.records
      })
    },
    loadTodo() {
      // 加载待办协同
      this.request.get("/youjian/todo", {
        params: {
          userid: this.user.id,
        }
      }).then(res => {
        this.todoData = res.data.records
      })
    },
    save(action) {
      this.$refs['ruleForm'].validate((valid) => {
        if (valid) {
          this.form.userid = this.user.id;
          this.form.action = action; // 区分是保存待发还是发送
          this.request.post("/youjian", this.form).then(res => {
            if (res.code === '200') {
              this.$message.success(`${action}成功`)
              this.dialogFormVisible = false
              this.loadPending()
              this.loadSent()
              this.loadTodo()
            } else {
              this.$message.error(res.msg)
            }
          })
        }
      })
    },
    handleAdd() {
      this.dialogFormVisible = true
      this.form = {}
      this.fileList = []
    },
    send(id) {
      // 发送协同
      this.request.post(`/youjian/send/${id}`).then(res => {
        if (res.code === '200') {
          this.$message.success("发送成功")
          this.loadPending()
          this.loadSent()
        } else {
          this.$message.error("发送失败")
        }
      })
    },
    edit(id) {
      // 编辑协同
      this.dialogFormVisible = true
      this.request.get(`/youjian/${id}`).then(res => {
        this.form = res.data
        this.fileList = res.data.attachments || []
      })
    },
    del(id) {
      // 删除协同
      this.request.delete(`/youjian/${id}`).then(res => {
        if (res.code === '200') {
          this.$message.success("删除成功")
          this.loadPending()
          this.loadSent()
          this.loadTodo()
        } else {
          this.$message.error("删除失败")
        }
      })
    },
    forward(id) {
      // 转发协同
      this.request.post(`/youjian/forward/${id}`).then(res => {
        if (res.code === '200') {
          this.$message.success("转发成功")
          this.loadSent()
        } else {
          this.$message.error("转发失败")
        }
      })
    },
    revoke(id) {
      // 撤销协同
      this.request.post(`/youjian/revoke/${id}`).then(res => {
        if (res.code === '200') {
          this.$message.success("撤销成功")
          this.loadSent()
        } else {
          this.$message.error("撤销失败")
        }
      })
    },
    handleTask(row) {
      // 办理协同
      this.$router.push(`/task/${row.id}`)
    },
    viewContent(row) {
      // 查看协同内容
      this.$router.push(`/view/${row.id}`)
    },
    handleSelectionChange(val) {
      this.multipleSelection = val
    },
    handleUploadSuccess(response, file, fileList) {
      this.fileList = fileList
      this.form.attachments = fileList.map(file => file.response.data)
    }
  }
}
</script>

<style>
.headerBg {
  background: #eee!important;
}
</style>