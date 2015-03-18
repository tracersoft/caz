class ComponentsRunner {
  constructor() {
    $('[component]').each((i, el) => {
      var component = $(el).attr('component');
      var metadata = JSON.parse($(el).attr('metadata'));
      var klass = new ComponentsRunner.components[component](el, metadata)
      klass.run();
    });
  }

  static register(name, klass) {
    this.components[name] = klass;
  }

}

ComponentsRunner.components = {};
