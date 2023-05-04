<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="test.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>



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
        <cfoutput>
            <cfif name eq "Andrea">
                    <h2>Chiari</h2>            
            </cfif>
            <ul>
                <li>#name#</li>
            </ul>
        </cfoutput>
    </cfloop>

<!---   <CFSET SESSION.aCart = ArrayNew(1)>
    
  <CFSET i = ArrayLen(SESSION.aCart) + 1>
  <CFSET SESSION.aCart[i] = STRUCTNEW()>
  <CFSET SESSION.aCart[i].cod = cod>
  <CFSET SESSION.aCart[i].descr = "#tipo_prodotto# - #prodotto#">
  <CFSET SESSION.aCart[i].qty = #qta#>
  <CFSET SESSION.aCart[i].aliquota = #aliquota#>
  <CFSET SESSION.aCart[i].ProdCost = evaluate("listino" & session.listino)> --->

  <cfset canzoni = Arraynew(1)>
  <cfset canzoni[1] = structNew()>
  <cfset canzoni[1].titolo = 'Stairway to Heaven'>
  <cfset canzoni[1].nome = 'ciao'>
  <cfset canzoni[1].anno = '1970'>
 
  <cfset canzoni[2] = structNew()>
  <cfset canzoni[2].titolo = 'Highway to hell'>
  <cfset canzoni[2].nome = 'ACDC'>
  <cfset canzoni[2].anno = '1980'>

  <cfset canzoni[3] = structNew()>
  <cfset canzoni[3].titolo = 'Highway to hell'>
  <cfset canzoni[3].nome = 'ACDC'>
  <cfset canzoni[3].anno = '1980'>

<cfoutput>
    <table>
      <thead>
        <tr>
          <th>titolo</th>
          <th>nome</th>
          <th>anno</th>
        </tr>
      </thead>
      <tbody>
          <cfloop array="#canzoni#" index="key">
            <tr>
              <td>#key.titolo#</td>
              <td>#key.nome#</td>
              <td>#key.anno#</td>
            </tr>
          </cfloop>  
      </tbody> 
    </table>
</cfoutput>

 
