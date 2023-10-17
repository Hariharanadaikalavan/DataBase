function outPut()
{
    var name=document.getElementById("item").value;
    document.getElementById('name').innerHTML=name;

    var qty=document.getElementById("quantity").value;
    document.getElementById('qty').innerHTML=qty;

    var prize=document.getElementById("rate").value;
    document.getElementById('prize').innerHTML=prize;

    var rupees=document.getElementById("amount").value;
    document.getElementById('rupees').innerHTML=rupees=prize*qty;
}