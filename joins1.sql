SELECT
  characters.id,
  characters.name,
  inventory.item_id,
  inventory.quantity,
  items.name AS item_name,
  items.power

FROM fanatsy.characters
JOIN fanatsy.inventory
ON inventory.character_id = characters.id
JOIN fanatsy.items
ON inventory.item_id = items.id

ORDER BY characters.id, inventory.item_id
