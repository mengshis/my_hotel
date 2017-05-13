/**鐢ㄦ埛鍚嶈緭鍏ラ獙璇�*/
uname.onblur = function(){
  if(this.validity.valueMissing){
    var msg = '鐢ㄦ埛鍚嶄笉鑳戒负绌猴紒';
    this.nextElementSibling.innerHTML = msg;
    this.nextElementSibling.className = 'help-block err';
    this.setCustomValidity(msg);
  }else if(this.validity.tooShort){
    var msg = '鐢ㄦ埛鍚嶄笉鑳藉皯浜�浣嶏紒';
    this.nextElementSibling.innerHTML = msg;
    this.nextElementSibling.className = 'help-block err';
    this.setCustomValidity(msg);
  }else if(this.validity.tooLong){
    var msg = '鐢ㄦ埛鍚嶄笉鑳藉ぇ浜�浣嶏紒';
    this.nextElementSibling.innerHTML = msg;
    this.nextElementSibling.className = 'help-block err';
    this.setCustomValidity(msg);
  }else {

    this.nextElementSibling.className = 'help-block hide';
    this.setCustomValidity('');
  }
}  
upwd.onblur = function(){
  if(this.validity.valueMissing){
    var msg = '瀵嗙爜涓嶈兘涓虹┖锛�';
    this.nextElementSibling.innerHTML = msg;
    this.nextElementSibling.className = 'help-block err';
    this.setCustomValidity(msg);
  }else if(this.validity.tooShort){
    var msg = '瀵嗙爜涓嶈兘灏戜簬6浣嶏紒';
    this.nextElementSibling.innerHTML = msg;
    this.nextElementSibling.className = 'help-block err';
    this.setCustomValidity(msg);
  }else if(this.validity.tooLong){
    var msg = '瀵嗙爜涓嶈兘澶т簬9浣嶏紒';
    this.nextElementSibling.innerHTML = msg;
    this.nextElementSibling.className = 'help-block bg-danger';
    this.setCustomValidity(msg);
  }else {
    this.nextElementSibling.className = 'hide';
    this.setCustomValidity('');
  }
}