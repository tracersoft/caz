class PostForm {
  constructor(el, metadata) {
    this.el = el;
    this.metadata = metadata;
  }

  run() {
    $('#post_title').keyup((e) => {
      this.setSlug($(e.target).val());
    });
  }

  setSlug(title) {
    $.post(this.metadata.post_slugs_path, { title: title }, (res) => {
      $('#post_slug').val(res.slug);
    });
  }
}

ComponentsRunner.register('post_form', PostForm);
