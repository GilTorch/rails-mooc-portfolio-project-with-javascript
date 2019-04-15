// get all courses 
class Course{
    constructor(id,title,user_courses,users,chapters){
        this.id=id;
        this.tilte=title;
        this.user_courses=user_courses; 
        this.users=users; 
        this.chapters=chapters;
    }

    static all(callback){
        $.get("/courses.json",function(data){
            callback(data);
        })
    }
}
