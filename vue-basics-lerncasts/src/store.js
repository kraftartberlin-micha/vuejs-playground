import {reactive} from "vue";

export const store = reactive({
    posts:[
        {id:1,title:"erster Post", content:"das ist der erste post"},
        {id:2,title:"zweiter Post", content:"das ist der zweite post"},
    ],
    addPost(post){
        this.posts.push({...post, id: Date.now()})
    },
    deletePost(id){
        this.posts = this.posts.filter(post => post.id !== id)
    }
})