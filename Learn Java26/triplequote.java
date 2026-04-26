public class triplequote {
    void main(){
        //simple use
        String story="""
                My name is Rohitchand this is my java tripple quote program
                trying my best to learn java with new features for 7 days to complete all to start DSA in java
                """;
        IO.println(story); //use println not print because its has multiple line

        //data entry like json use
        String jsondata="""
                1:"Rohit",
                2:"Biswa",
                3:"Soram"
                """;
        IO.println("Json data");
        IO.println(jsondata);

        //uses in SQL queries
        String studentdata="""
                SELECT id, name
                FROM students
                WHERE marks>80
                ORDER BY name ASC
                """;
        IO.println("SQL queries");
        IO.println(studentdata);

        //Data inside """...""" into key and value divide
        String[] lines= jsondata.split("\\n");
        for(String line: lines){
                String[] parts= line.split(":");
                if(parts.length==2){
                        IO.println("id: "+parts[0]+"->  names:"+parts[1]);
                }
        }
    }
}
