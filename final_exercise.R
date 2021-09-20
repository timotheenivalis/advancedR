
#As a group, your task is to write a function 
#that takes in a vector of species names, and 
#computes the minimum distance between the locations 
#of each pair of species in that list. You should 
#first write a general outline of what you are going 
#to do in this main function terms of (small, 
#manageable) sub-functions. Then, divide those 
#functions up amongst your group, and write your 
#individual functions. Then, once you are ready, 
#swap, and:
  
#- test each of the other functions the other person 
#wrote (without actually reading the code), to make 
#sure it works as expected, throws errors when it 
#should (e.g., with nonsense inputs), etc.
#- read their code to see if you understand it, check 
#for errors, think about what you might do differently, 
#etc.
#- combine your work and run the code

#If you find this too easy / finish early:
#- give the output of your function a class, 
#and then write a class-specific `print()` 
#and/or `summary()` function for it 
#- if you like, take this a step further and 
#write a `plot()` function for it that puts the 
#points on a map and connects the shortest paths.

#for your convenience, records of the following species
#can be found in the example_species.csv file
spList <- c('Daktulosphaira vitifoliae',
            'Lymantria monacha',
            'Xanthomonas citri',
            'Solenopsis invicta',
            'Asterias amurensis',
            'Carcinus maenas',
            'Achatina fulica',
            'Incisitermes minor',
            'Varroa jacobsoni',
            'Hymenachne amplexicaulis')
#you are welcome to just stick with these species for this
#exercise

#(you can use our make_distvec function if you like)
#(you might find the combn() function useful)

#you could start with something like this


compute_species_min_dists <- function(spList, spLocs){
  
  sp_comb <- as.data.frame(t(combn(spList,m=2)))
  names(sp_comb) <- c('species_1','species_2')
  
  for(i in 1:nrow(sp_comb)){
    
    #do some calculations using functions here
    
    
  }
  
  
  
}



