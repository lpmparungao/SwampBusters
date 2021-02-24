-- Collision Classes used with windfield (see the libraries)
function getCollisionClasses()
  world:addCollisionClass('Ignore', {ignores = {'Ignore'}})
  world:addCollisionClass('Water', {ignores = {'Ignore'}})
  world:addCollisionClass('Ripple', {ignores = {'Ignore', 'Water'}})
  world:addCollisionClass('Pickup', {ignores = {'Ignore'}})
  world:addCollisionClass('Player', {ignores = {'Ignore', 'Water', 'Ripple'}})
  world:addCollisionClass('Enemy', {ignores = {'Ignore', 'Pickup', 'Water'}})
  world:addCollisionClass('P_Weapon', {ignores = {'Ignore', 'Player', 'Pickup', 'Ripple', 'Water'}})
  world:addCollisionClass('E_Weapon', {ignores = {'Ignore', 'Enemy', 'Pickup', 'Ripple', 'Water', 'P_Weapon', 'E_Weapon'}})
  world:addCollisionClass('Wall', {ignores = {'Ignore', 'Wall'}})
  world:addCollisionClass('Breakable', {ignores = {'Ignore', 'Wall'}})
  world:addCollisionClass('Transition', {ignores = {'Ignore'}})

  gravWorld:addCollisionClass('Particle', {ignores = {'Particle'}})
end