setCookies = (question_id, option_id, max_length, page_no) => {
  resetCookies();
  document.cookie = "answer_id=" + option_id;
  document.cookie = "question_id=" + question_id;
  
  if (page_no == max_length){
    $(`#submitButton`).removeClass("d-none")
  }
}

resetCookies = () =>{
  document.cookie = "question_id=; expires=Thu, 01 Jan 1970 00:00:00 UTC;";
  document.cookie = "answer_id=; expires=Thu, 01 Jan 1970 00:00:00 UTC;";
}