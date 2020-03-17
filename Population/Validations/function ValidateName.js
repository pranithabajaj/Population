function ValidateName() {
    var flag = 0;
    var fn = document.getElementById("txtFirst").value;
    var mn = document.getElementById("txtMi").value;
    var ln = document.getElementById("txtLast").value;
    var dt = document.getElementById("txtdate").value;
    //if (fn.length == 0 || ln.length == 0) {
    //    alert("Enter firstname,lastname");
    //    return false;
    //}
    var Regex = new Regex("[A-Za-z*-']+");
    var fname = Regex.text(fn);
    var mname = Regex.test(mn);
    var lname = Regex.test(ln);
    var s = fname + " " + mname + " " + lname;
    var Regex = new Regex("((0|1)[0-9]|(0|2)[0-9]|3[1|2])\/(0[1-9]|1[1-2])\/(190[0-9]|19[11-99]|200[0-9]|20[0-9])");
    var Date1 = new Date();
    var Date2 = new Date(dt);
    if (!fname && !mname && !lname) {
        alert("enter only alphabets and *,-,' ");
        flag = 1;
    }
    else if (s.trim().length > 32) {
        alert("Length of name cannot be more than 32");
    }
    else if (Regex.test(dt)) {
        var y1 = Date1.getFullYear;
        var y2 = Date2.getFullYear;
        var d = y1 - y2;
        if (age > 125) {
            alert("cannot be more than 125 years");
            flag = 1;
        }
        return false;
    }
        return true;



}