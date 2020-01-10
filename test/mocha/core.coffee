describe 'NVD3', ->

  describe 'Core', ->

    objects = [
      'window.nv'
      'd3_time_range'
      'nv.utils'
      'nv.models'
      'nv.charts'
      'nv.graphs'
      'nv.logs'
      'nv.dispatch'
      'nv.log'
      'nv.deprecated'
      'nv.render'
      'nv.addGraph'
    ]

    describe 'has', ->
      for obj in objects
        it " #{obj} object", ->
          should.exist eval obj

    describe 'has nv.dispatch with default', ->
      dispatchDefaults = ['start', 'end']
      for event in dispatchDefaults
        do (event) ->
          it "#{event} event", -> assert.isFunction nv.dispatch.call
