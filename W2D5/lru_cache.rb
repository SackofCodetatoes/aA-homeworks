class LRUCache
   def initialize(cache_size)
     @cache_size = cache_size
     @cache = []
   end

   def count
     # returns number of elements currently in cache
     @cache.length
   end

   def add(el)
     # adds element to cache according to LRU principle
     if @cache.include?(el)
       @cache.delete(el)
     elsif count == @cache_size
       @cache.shift
       show
     end
     @cache << el

   end

   def show
     # shows the items in the cache, with the LRU item first
     @cache
   end

   private
   # helper methods go here!

 end

 cache = LRUCache.new(3)
 p cache.add("item")
 p cache.add("hashitem")
 p cache.add([])
 p cache.add("item")
 p cache.add("suppermeatboi")
 p cache.show
