class PostForm {
  constructor(el, metadata) {
    this.$el = $(el);
    this.metadata = metadata;
  }

  run() {
    this.$el.on('change keyup', '.title', (e) => {
      this.setSlug($(e.target).val());
    });
  }

  setSlug(title) {
    $.post(this.metadata.post_slugs_path, { title: title }, (res) => {
      this.$el.find('.slug').val(res.slug);
    });
  }
}

ComponentsRunner.register('post_form', PostForm);
