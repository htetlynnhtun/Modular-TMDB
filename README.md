# Modular-TMDB

## Story: Customer requests to see Upcoming Movies

As a customer  
I want to see upcoming movies  
So that I can know if there's any movie that I'm interested in

### Scenario: 1

**Given** the customer has connectivity  
**When** the customer requests upcoming movies  
**Then** the app should display a list of upcoming movies from API(TMDB)

### Scenario: 2

**Given** the customer has no connectivity  
**When** the customer requests upcoming movies  
**Then** the app should display an error message

## Load Upcoming Movies Use Case

### Data(Input):

- URL

### Primary Course (happy path):

1. Execute "Load Upcoming Movies" command with above data.
2. System fetch data from URL.
3. System create Upcoming Movies list from fetched data.
4. System delivers Upcoming Movies list.

### Error Course - no connectivity:

1. System delivers no connectivity error.

## Model Spec

### Movie
| Property     | Type        |
| --------     | --------    |
| `id`         | `int`       |
| `title`      | `String`    |
| `posterPath` | `String`    |

## Payload contract

```
GET https://api.themoviedb.org/3/movie/upcoming

200 response

{
    "results": [
        {
            "id": 980078,
            "title": "Winnie the Pooh: Blood and Honey",
            "poster_path": "/fNTtVbqI92abEKAgz2ynurCUne.jpg",
        },
        {
            "id": 804150,
            "title": "Cocaine Bear",
            "poster_path": "/gOnmaxHo0412UVr1QM5Nekv1xPi.jpg",
        }
    ]
}
```
