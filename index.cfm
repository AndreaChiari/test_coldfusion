
<cfset array = ["Giacomo","Mario","Alberto","Teresa"]>
<cfset variables.test = 2>
<cfset test2 = "Andrea">
<cfset test3 = test & test2>
<cfoutput>
    <p> mi chiamo #test2# e ho #test# anni </p>
    <h1>#test3#</h1>
    <p>#serialize(array)#<p>
</cfoutput>


<cfset canzoni = [
    firstsong = {
        titolo: 'Stairway to Heaven',
        nomeCantante: 'Led Zeppelin',
        anno: '1971'
    },
    secondsong = {
        titolo: 'Wish you were here',
        nomeCantante: 'Pink Floyd',
        anno: '1975'
    }
    ]>
    
    <cfset persone  = ["Andrea","Giulia", "Giacomo", "Enrico"]> 
    
    <cfloop array="#persone#" index="name"> 
        <cfif #name# === "Andrea">
            <cfoutput>
                <p>Chiari</p>
            </cfoutput>
        </cfif>
        <cfelse>
            <cfoutput>
                <h2>Andrea non è presente</h2>
            </cfoutput>
        <cfoutput>
      <ul>
        <li>#name#</li>
      </ul>
        </cfoutput>
    </cfloop>

  <CFSET SESSION.aCart = ArrayNew(1)>
    
  <CFSET i = ArrayLen(SESSION.aCart) + 1>
  <CFSET SESSION.aCart[i] = STRUCTNEW()>
  <CFSET SESSION.aCart[i].cod = cod>
  <CFSET SESSION.aCart[i].descr = "#tipo_prodotto# - #prodotto#">
  <CFSET SESSION.aCart[i].qty = #qta#>
  <CFSET SESSION.aCart[i].aliquota = #aliquota#>
  <CFSET SESSION.aCart[i].ProdCost = evaluate("listino" & session.listino)>
  