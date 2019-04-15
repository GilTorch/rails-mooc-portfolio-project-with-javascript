// get all courses 
class Course{
    constructor(id,title,user_courses,users,chapters){
        this.id=id;
        this.tilte=title;
        this.user_courses=user_courses; 
        this.users=users; 
        this.chapters=chapters;
    }
}

Course.byId=function(id,callback){
    $.get(`/courses/${id}.json`,function(data){
        console.log(data)
        callback(data)
    })
}

Course.all=function(callback){
    $.get("/courses.json",function(data){
        callback(data);
    })
}
