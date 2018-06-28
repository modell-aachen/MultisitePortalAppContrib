/* global $ Vue */
import WebTile from './components/WebTile.vue'
import $ from 'jquery'

$( function () {
    Vue.instantiateEach( '.portal', { components: { webTile: WebTile } });
})
