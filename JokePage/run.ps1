<#
    Inspired by:
    https://itnext.io/serverless-from-the-beginning-part-ii-getting-to-know-your-portal-ide-eff3bffed4e3
#>

param($Request)

function Get-Joke {
    $(
        "Did you hear about the restaurant on the moon? Great food, no atmosphere."
        "What do you call a fake noodle? An Impasta."
        "How many apples grow on a tree? All of them."
        "Want to hear a joke about paper? Nevermind it's tearable."
        "I just watched a program about beavers. It was the best dam program I've ever seen."
        "Why did the coffee file a police report? It got mugged."
        "How does a penguin build it's house? Igloos it together."
        "What time did the man go to the dentist? Tooth hurt-y."
        "My dad literally told me this one last week: 'Did you hear about the guy who invented Lifesavers? They say he made a mint.'"
        "A ham sandwich walks into a bar and orders a beer. Bartender says, 'Sorry we don't serve food here.'"
        "Whenever the cashier at the grocery store asks my dad if he would like the milk in a bag he replies, 'No, just leave it in the carton!'"
        "Why do chicken coops only have two doors? Because if they had four, they would be chicken sedans!"
        "Me: 'Dad, make me a sandwich!' Dad: 'Poof, You’re a sandwich!'"
        "Why did the Clydesdale give the pony a glass of water? Because he was a little horse!"
        "Me: 'Hey, I was thinking…' My dad: 'I thought I smelled something burning.'"
        "How do you make a Kleenex dance? Put a little boogie in it!"
        "Whenever we drive past a graveyard my dad says, 'Do you know why I can’t be buried there?' And we all say, 'Why not?' And he says, 'Because I’m not dead yet!'”
    ) | Get-Random
}

function Get-Pic {
    if ((Get-Random -Minimum 0 -Maximum 2) -eq 0) {
        (Invoke-RestMethod 'https://api.thecatapi.com/v1/images/search').url
    }
    else {
        (Invoke-RestMethod 'https://dog.ceo/api/breeds/image/random').message
    }
}

function Get-MashUp {
    @"
        <h3>Jokes</h3>

$(Get-Joke)

        <br><br><img src="$(Get-Pic)"/>
"@
}

Push-OutputBinding -Name Response -Value (@{
        StatusCode  = "ok"
        ContentType = "text/html"
        Body        = Get-MashUp
    })
