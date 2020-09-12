<!DOCTYPE html>
<html>

<head>
    <title>Laravel Autocomplete Search From Database - NiceSnippets.com</title>
    {{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> --}}

    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript">
    </script>
</head>

<body>
    <h1>Infield Top Aligned Form Labels</h1>
    <div class="container">
        <style>
            form,
            ul,
            li,
            input,
            label {
                box-sizing: border-box;
                display: block;
            }

            ul {
                background-color: #fffdfa;
                border: 5px solid #888888;
                list-style-type: none;
                margin: 3em auto;
                padding: 0;
                width: 350px;
            }

            li {
                border-bottom: 1px solid #c8c8c8;
                margin-top: -1px;
                position: relative;
            }

            label,
            input {
                transition: color 0.4s ease, background-color 0.1s ease-in-out;
            }

            label {
                color: #aeaeae;
                font-family: "Lucida Grande", "Trebuchet MS", sans-serif;
                font-size: 70%;
                letter-spacing: 0.03em;
                text-transform: uppercase;
                position: absolute;
                top: 10px;
                left: 10px;
            }

            input:focus+label {
                color: #0059a6;
                font-weight: bold;
                letter-spacing: -0.01em;
            }

            input {
                background-color: transparent;
                border: none;
                color: #626262;
                font-size: 18px;
                margin: 9px 0 7px 0;
                margin: 0;
                padding: 2em 10px 10px 10px;
                outline: none;
                width: 100%;
            }

            input:focus {
                color: #000;
                background-color: #eeeeee;
                box-shadow: 0px 3px 4px -2px rgba(0, 0, 115, 0.25) inset;
            }

            html {
                min-height: 100%;
            }

            body {
                background-color: #ddd;
                background-image: linear-gradient(to bottom, #f3f3f3 50%, #acacac 90%);
                font-size: 16px;
                padding: 20px;
            }

            h1,
            p {
                color: #333;
                font-family: "Lucida Grande", "Trebuchet MS", sans-serif;
                font-size: 1.6em;
                margin: 0.5em 0 1em 0;
                text-align: center;
            }

            p {
                font-size: 80%;
            }
        </style>
        <form>
            <ul>
                <li>
                    <input list="qwe">
                    <datalist id="qwe">
                        <option value="aaa" />
                    </datalist>
                    <label for="qwe">qwe qwe</label>

                </li>
                <li>
                    <input id="first-name" type="text" />
                    <label for="first-name">First Name</label>
                </li>
                <li>
                    <input id="last-name" type="text" />
                    <label for="last-name">Last Name</label>
                </li>
                <li>
                    <input id="email" type="text" />
                    <label for="email">Email</label>
                </li>
                <li>
                    <input id="fav-duran" type="text" />
                    <label for="fav-duran">Fave Duran Duran member</label>
                </li>
            </ul>
        </form>
    </div>
</body>

</html>
