%dw 2.0
output application/json
//Here I used flatmap to flatten the ArayofArarys into single Array and then I have Map the Fields as of my requirement And By merging the values into single value
---
payload flatMap $ map ((item, index) ->
{
    resourceAndDestinationType:
    {
        S: item.destinationType ++  item.resource
    }
} )

