<ccda-section>
  <allergies if={ opts.current.tagName == 'allergies' } section={ opts.current } data={ data } />
  <medications if={ opts.current.tagName == 'medications' } section={ opts.current } data={ data } />
  <generic if={opts.current.tagName == 'generic' } section={ opts.current } data={ data } />
  
  var options = {
    section: opts.current,
    data: opts.parent.data[opts.current.key]
  };

  //riot.mount(this.root, opts.current.tagName, options);
  var self = this;
  this.parent = opts.parent;
  this.current = opts.current;
  this.data = self.parent.data[self.current.key];  
  this.on('update', function() {
    self.data = self.parent.data[self.current.key];
  });
</ccda-section>