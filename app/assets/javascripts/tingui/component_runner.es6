class ComponentsRunner {
  constructor() {
    $('[use-component]').each((i, el) => {
      var component = $(el).attr('use-component');
      var klass = (new this.components[component])(el)
      klass.run();
    });
  }

  static register(name, klass) {
    this.components[name] = klass;
  }

}

ComponentsRunner.components = {};
