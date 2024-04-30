<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        background-image:url("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhISEhIVFRUXFRUVFRUVFRUWFRUXFRcXFxUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGislHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS8tLS0tLS0tKy0tLSstLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAAIEBQYBBwj/xABEEAACAQIDBAcDCAgGAgMAAAABAgADEQQSIQUxQWEGIlFxgZGhEzKxBxQjQlKCwfBicpKy0dLh8RUzU3OTokPCY8PT/8QAGwEAAwEBAQEBAAAAAAAAAAAAAQIDBAAFBgf/xAAtEQACAgECBQMEAAcAAAAAAAAAAQIRAxIhBCIxQVEycYEFE2HwFCNSobHB8f/aAAwDAQACEQMRAD8A2vSLShU5qfhJPyUV82zqK8UNRD4Ox+DCD28t6TDkZXfJDiLJXpHhVYjyX+PpMmDaRvzK8Z6Kyzqm4jowb5sMB5P8sXR4qyY+kLG4Wrb7Q9x/EC3gsvehG1xiMOuuoH9CPA/hNhtnZ64ijUov7tRSvceDd4Nj4TxvoJiGwuKq4apoVc3HZrlcedptxS1wrugyjrg14PVDGGEMYYDzhs4Y4xpjCMYYwxzQbRkTZxjBmdYxhjpE5M4YNomMEzR0iMmdaCacZ4JqhlEiEmdaCYxr1oJq0ookJSOsYJjE1WMNWUSIsRMYTEagjS4jAoUGxnWqCDLCFIJwmMJnSRGGOgHCYwmdMa0YJyMZomjSIyQw0mNJnSIwiMcK8UbFCceo7Tp3QjlMj0HqeyxlVb2Byt6lW/eE22MW4mHoKEx6/pB19M3/AKz4HG6mfozVwaPXI1xOrExm48w4x0nlvTHYTLtJMRTsqut6hJtrbIQBvJ0B8TNptXbnsrqti0xeMxLOxZzcniYr4h429HU04cTu30Nds6uGUDsA17eF5LNE8NZm9jY62l7S/pY0EaGQx8ZkXV2HLwWN9FQmUjeIwySmMEcwVuR5fwmqHGxfqRgycDJelkFowx7CDM3o82QxhBsIRoMmURKQJ0gWWHYwTGURGRHZTAODJbGCaPFkJog1IFjJriAqKJaLM0kRCYwtDukCySqJgiYxmj3pwLLGQThMYTEwME0dI4eTGEwbGNvGoKQ8tGloN6kGakZINBi8aXgDUjTUjUGg5qRpqQBecNSHScG9pFI/tIodJx7ptPB2Usu7iPxE83xFJnx+HRDZjUGvYLEsf2QZ6xh661EV1IKsLg9oP53TJbR6JJ86TErWZAjCoEVRplIzDMfqm/ZuvPhZYeZNH3mLOlFqRq6FQ6hhYjx0N7SBtraqUQqk9ZzZQN/M90mUNdb3BAsfPs75i+m9ELicPXYkWDp+jdlJW/dY275eV1sSwqLlzFbjMSLsWMzWO2jVqv7LDIXfidyrzdtyj8i8uaezPnBD1WK0zuVTZn8eC+p5S5w6JTUJTRUUcALeJ7TzmBptno2o+5VbF2T7Kxr1DVqHeP8AxryVePe1/CbbDUqbKLovgAD6TK16gBveHwO2EBCZrtwUat5CI6iwc00aOts9T7rMvjceR/jC4XCEDU3Mrv8AEwNGup4AgqfIwtLag7YU4k2p0Sa9IqdfOR2Em/PVYWJkNp7HC5tca8HhcXgeOV+QTCCYQzQTTYjA0AcQTQ7iCYSiIyANBNDOIF5VGaYFoB4d4BpREJAjBsYZzBGURNgmME5h2EE6R0AA0G8KywZSOmECRBvCPBNHQwJlgiIVoIyiCDMYY9ossYIMwRMI7QZjIJy8U5FGOPRugHStWyoTanUNgCf8qofq/qt/DnN7tBLKW0sAQQdxU2uDfmB4XnzbSqNhqzI27MUdeYNj/Se49BtvDG0DSqNeoi2a/wBdDor8zwPOx4z5bicVc8eh9pkhtaLvYWGWjRSghJWmoVCfs/VF9260oenOGFakaZ4kW7QQdLTQbJq2Qo29Dl8OH8PCQtv4Muht7w1HeJkQkXTMZWqiiqLwVVT9kW/CAwmJesT7JCw3Zjog+8d/heMfBvXa9RWSmrWIOhcjeB+jzlrRxqqAugA0AGgAmCa3PStVtuR63RX23+fWbLxSmSgPIvvt3WlrgqFLDKEootNexRa/NjvJ75X1NtAcZntsdM8PSuKlUA9guTr+iNYirogPV1fQ9MpYpXUA2IO8EAjyMD/h9C9wgXu0HgOE8q2d08oMbLUPirCaXBdKFe1mvEb/AKkHR3j/AGNjidngjq8LeUY0jYbagtvkgz0uAa5vg8j6kny/P+hhg2hGgmnpo8hg2gmhWgmlERkCaAeHaCcSiISI7iR3kmpIzysTPME0GTCNBNKoiNJjD3zrQTRkjjpjGaNJjS8agiYCCZBHlxGEiOjgTUoJ6UkMJzdvjWMiIaPbAskms0G1oyYbIRWDKyayCCZJRSOItoof2cUOoNmy+V/okCpx9FdRb5wo4ruFYc10vy14a4Dont18LWSop1Q7uDKfeU8iJ9H1kDAhgCCCCDqCDoQRPm7plsM4HF1KS3yA56R/+Nty37VNx4DtnzXDZLWiR9rin2Z9B4PErWVK9IgpUUHwOhBHaDfxENtBSVPdPMPkj6R6thHOjXelfg4HWXxAv3g9s9L2gTlJEz5MeidCSjpdGFV62IqtRsENMAszGw1uBltvvY+Udiuii6M9ZiL65SB6Zb+so+kG03SuXpsQbZWHAjfYyEekbEC5bttpb0mLNjtm3DlpdaNZT6LYVmRr1LoysPpalrqbi63swuNxEPtPoTgsXW+c4ikKlTKBcllBC7syqQGNtLngB2TJ0OlL2dqas/s1zMqqS2W4XMFGpAJF7brx2L6XVKVP2rWyWBuCSbEXvYDskIxmtkmPNwk7bVmuXobs3cMJQHNVCnzWxhqfRfBj3Uy8sxNvOecYfp+tZsiNrvsQw9SJpsH0muADpJzT7oMXtszR4nZtNF6m8HSSl3L3CVGF2j7Q/Dvlzabvp63Z5f1N7RGNBtHtBtPVR40gbwTQrwRlERkCaBeGaBeURCQF5HeHeAeViZpAWg2hGjCJVEgLCCaFcwLRkEYYJoRoJjKI4Y0GY9jBtHQRpacNUzhMExjUMENWNLCBJjCY1HBjGmCLRB7Q0FIcWnYM1zFOpnH0K087+UzYYrmk24m6BuwnVSeVxbuJnoplD0koZk7iD5T5GDpn16dM+ecBXqYauLEo9N7i+9XQ7j3ET6K2ZjRisNTrLuqIDb7J3MvgQR4Tx75U8AoqUsTTFvbKc3+5TsGPipXxBMv/AJHNuk58Ix0YNUp8mFs6+IF/A9s25V9yGrwXlzQvwSelGwveYbyZkMTsiovCew7UwtxbmJV1tmA8JhcScZHn3QiqaGOpMdL5kPO4zAftKsb032cKWIxGHA6gN0HDJUXMoHIZsv3Zq8dsgKyuBqrKw71IP4RvTTZ/tKuGrj61E0z30W3nvD+kStg3ueQ7F2aFdHsVOapTNzpdbEHXtB9JsUO7d5zRbG2ElsVTKqxeialO4uVemL3B4XKnzMHsro9n6x0Ubz28hzkJpt+5ohJUzuxfaWLAdVbXPebADzm2pNdVPISow2D0yoNLECWWDPVA7Jp4VaX7mLjuaFrsEaDaPaDaeijx2DaCaFaCaOiMgbQLQzwDyiM8gLyO8kPI7CViZ5AjBNCuYFpRE2DYwTGEaBaURwxoFjCtG5Y4UBMG5ll/hr5cz2Re17j/AKi59JErKtjkJe285cqjuubnyhjJMYhtBNDO3d+ecGCCQN1+0i3ifxlUcBJg2aScVhmT3gR2c+48ZGYWjpoKQ0n1jGecd4MtHSGH5pyDzRQ0A+kqkrdormUjlLFzImJWfGQPrTCbc2J85wVWiovVQ+1pDiWW91HepYd9p5T0T2gcPjKDi/VqoSBvKk2YeKkiendPNsVaDCnhSFqles17ZQ2gseBOpvwAJ4TCbX2YRRWoTmZG9sHCZWuCi4im4H1kfK1iSbFmvYzSsjhGvPYtB6Vv3PVl6YYSvUFMOyMSABVXLc8Be5FzzMvjQnzltImtXzUwSzqrAAdqKD4XuOzSexdDOkmTD06ONbJVXqhmN7pYZS53g8LngAbyKWq6T2A4Wrii+xuGuJTV3z0XH+jXPfluEI86iH7s1NZQbTJOfZ4irT3CtUKgnhUqJanb77KfuychEWWylC5HtqrqL/otcEfntjnWwWiBbKSmn6Jyk+kfhCGQ23MuYeWYenxhVS9RmP1gjD7yKT/2zQNDJ7haNG1hI7U8rkcDJ2e0j4sbjGWwJLUqfcjtFTS/kYqm+Ooce6bu1njNU6I1SCaPqHWCJlUZpDGian1SeYHx/pGsYUn6Px/CMSq7K95Hcw9QyO0vEySBmdxNOwXmL+pnOMJjty/qiP3Qi6MgNBNCNGgShyH4XCM7WA/gOZMmbQoLQUakMd1tGPab2OVe7XUa8IGntPKMigLfQubkgne2nZrp+TBxeMeowZj1rAC2mUcuZgUZSlv0KXFItkwNSp/mt7NT9Utd2F7hddwAtpu0uQZ3aO0qaJ7KkoIsV7FGn/Y6iUmUsSTqTvJ1J7zJIpHQC/Z4/kxvtq938E3k8FX7PQjx8v6EwAS5Atm10XW55C2s2C7OVRkc9dlbrXOhFhZRx3xmH2RkqhgzZVGlze5Itw4d8f8AiI7gqSOYbCIKeWxKnUK2uW493tGt/OUG2Nklbsmq7yOK8+YmudbSHXEhDI07KJnntSBLS725gcpzKOqeHYf4ShqT0IztFYqzuaKCvFH1DaT6bccZHrnQyt6U456SoUbL7xJzUl3ZQLmoD9rgN5UG17yVjWJptbfkb4T4yJ9QeH4zHHE4h2ufpKmncSAvkuUefbNtsHouK9HOldai6oUIKg5QUszC93yMVzfZYDheeU4bHCnkfflKm3ba2k2fRHpIq4J0Vyrg17bwSSt0PM2KDwmjP1pGjNHekDxmI+b0ylMICpNOmqElRbR6121YkiwJvx1NhMltXHBeqATUAGZwTo3Ecz2k8ey0t6aFgDcDrrTFxyJ3Cx3Dtl1gOhbtSzqjOLm4Kbjrdsx0bvkeJnKMlGPYMnp2Rrvks2o1bB5XN2pMUH6pAKjwOYdwEZ0toMTUKaOhSoh+yw6obwBJ8I/5MsCadDEMRo1YgcwoGvmxHhJ+2U+kIO5ksfG4MbMuZk5+tjtnYlaie0TdfMo7FqAVaYHclRB4SfS+oeJp2A/23a9vB1mS6JYk0q+Jw7ncEqKOwG+YdwBpS/xDXVWva1R1H30Vv/raS7CE9Gvczj6yJQxFQ71DD7RNvUb/ABvJnzgjcoHPUkfh6R4xb6CTyxh1YPEIAd/AcOQnKQHqB+fKAduJ3xtJ7EX7RNijtR5MppyvyKsFGnr/AEgCo7fScxD3JMPstbt4H4GU9MbI+qVEUgdsMVBXTda/kbfhIWLNmM5Rr2DXPDTzEfS2rI60m0ccKdNR6yPUpgcfScR+tB4o7pZLejLJqrO5V7T5QmMQbzwJXTjbnIJaEq1PowL65iT5C34x2t0InswRCniR4X9YLEpYaa+E4m8Sw2vStRpHk/739o900vJyVp/goj8I1NZ13011vrz7Br5xUyO0j19f6TQhZdCXh11EvfmAaxa40A94G9hbs0kLZIpZWL6m/Y263A9uvwk+ri2sMqHvI07haZckm3SDCKq2FXDqCDrcCwub2B7I+RqONB36aHwsNe/tEMtQEAjcdRItPuNa7DXkGvLjZou48f3TKfGnWGL5qDp2sqscgYFTxmMxSWJB4G02VdpltsL1zz1/D8JuxMpArLxRpMUuWo976ZbqNyB1m3rSO8BdfaMLA5sp7c1t9pd01uD3Sn6ZDqU7b+uFv7P3ioAtn942J6o39o0l/RSwHdPkEz6Q+bOm2yqmDrVqFrIWLU9NGpk9Sx5DQ81Mh9FsGz1hSFzmDkrrrZSVHnafQXSzo/RxlMU6y7r5XGjodNVP4bjMZsr5MzQqe0p4ysNCt1FPNlO8BmU27xrOyR1vUmVlPV7mMfD1MPWFCpZWSqtQX91gNDlPNT/aemYbbYekuCwn0jtmufq00ZieueCC+vbuG8SxwPRPCqvs3oLUuSzNW+ldmFhmZ3uSbc9LS82ds2lQUrRpJTXfZFCgntNt5lXOLeprcLyRe9bgsFgVoUkpLqFGpO9mJuzG3EsSfGVW36JzoQL6fD+80FXhIW0Du8YlaiEp6bkYHG0TT2hhmbq+2p5DxJKkqfVqE1KUQCy7wDSbXtIxCzOfKKrChSrp79CqrA8iLW/aCTS0qgdTUX3XWgV7iXYejTlGnX5RKU3KN/hhi0YxjWMaWmtIwNjKgkZ2kljI1VZWJCQFjJ2xj1vzxIH4ytdpO2W1sx5D95YZrlFxvnRXY1usYEICLx+0j1z3mQGaaIRtGPI6kyQQBBvrAK2sZiTKaSN2GZBIbtGF40vKKIA1I6iWu2/8qmOzN6hT+MpqDaiXG2x9GPuetJf5Yk/XEePpZmqu/wBJJ2TgTVY62Ubz8AOciVjqe8y76OkBGN9S/lYC0tOTjHYCV9S+oIEVVG4Cw/ieccTIoqzpqzDpHciBV2Wcxs+ljY8Qew9vGRamzap09rZRusW+HCWzVIB6ssskiWlFlsdrPv3AepyzPbTxiq+ViASLi5AB1sQOe7zlhha+Rs5Omin7zpb1HqZUbeqqjMzgWUtqRc66EDv3Rccecst4pEHEYxM2XMM3YOW8TP7Wq3duVvUX/GQqjH2hI+1fkNbwuNcFmI4217dBNsVRVRpkFjFGkxSllqPojpJiKahDVeiqg3Aq0jUJYbioDAjs72A4y7pE2GYgmwuQLAnkLm3mZQ9K6pWioXNmLaZQxNsj5h1e0acr3F2AEuxU4cp8j3PoTmIW9oymsK/COVY17ABOtiL777/CEHGMrEDzF/OOd7CA4FUOokXaY0B5/Ef0hKtUAjWRcdjKdRPo6iPZhfKwa2h32OkrBboTL6GZ7pVQNTCYhQLn2ZYDtKdYD/rIfQXaIq7PoWN8tT2J4m1NauW/3fZ+cl9IMTUSiTSF2zILdoZgLeNwPGY3otiGwuNxOCFvZfOHdANdKqLlN78Ep0/Mxpx/mR/P/SOJN4n8/wCD0Rmgi05njGM1JHntji8ExjqRF+sbDuv+MMVp/aP7I/mhuhKbK+qskYM2Ru9R8T+ENmpr+keYsPQwlemop3XcWHhYHTn70LlewsYU7spNr/5j/rN8ZXVFM0OPporGo2t2YhbaHiLm+65lS+0r6OAw7gCP1SBp8OU0YpNpUjLmglJ2yvV7G8HWq3k6otE652HLID/7QTU6P22/4x/PLJog4v8AWiucwReWTU6P22/4x/PBmlR+23/GP55RTR2l/tEXDvrLvbL9SoOyoo8lqD8JGwgpVG9mq5TcBW1JPDri9teW7nJRpiqay3teqDfs1fX1kpyWq/A8Yv8AfZmaqXN9L9/PWPwON9kxuDY2B8NxHnJmJxy0gFp/eYqtz2DjZbcOOvK0c4ilUHWGRu1FBB+5cWPcbcpfVa3WwKLJNsUj9e3eCPzvkpMSGFwQQdxG6Z96NCw+kbef/GOX6cm7IFEBrVH4aZBYcwM8lKMa2s7QWLVoB60Ixpfbb9gfzxhxFFO1zpYMMo79Guf6xPg5RDUiDSqA8co/eOn7ImV6ZN9MwLFjnfTcoFzbQa38Zo9pVlSjmT6zCwP1coa45+8JUbRootRq9QkkszBbaGwBGZr6AkgbocbqVlYmVxNNixH6RA7N9ozFNvlvS2vmP0iqy8BZVI/VIHV+HIwVanh21zuOXs1NvHOLy+ryiqZQzst/m+H/ANR/+Jf/ANIodaH1HtvS00xTVnpCpYlApqezFnF2O+zWyKdd2UHS0uA1gL77TN9L6d0VvZlrFusER8t1OhVjx03b7AfWmiqDQE758ylufQEhTePc9kj0THu+sDRwPEvpa2/jGFri+/S9++FdSbyPSQ5SOZHgCbeloUceffKti664dPZbmY3BvZitiqHUb+sfuzJ0OkKpSXIStQNckaC3HXj/AEntWM2bSrUzSq01dDvVhcabjyPMTN1uguAwymrSw4Dgggu9Spl1Gqq7EA8wJpxZEuUosqhB2uhSYDbmKq9U4BgN2Z6vsU5s3VzkclF+cdT2Ewx5xpqizUgrUwgAZ7Zc4sbKAoQAamyjWXGeK8f7Ku3uePLiHVRVIcWnC8GzRmeXSMzY5zBF4i0E5jpEZMczyQmNJCpwuT52H4SAzRUnswMZxRNTaZZ9IvdT9UHzmXeaHbtYEJ+ovwvM/Uj8OqgJxLvIwDNB2Y7gT3An4RzxtLEul8jEX325TT7EUGx+FKlcoYgoCdCbE3vwlezSy2htJiVyObZBm/W1vvEqi0EG63KaVewfB4o03DjeCrC/I318pc7DxBYVWP2Gby/vM07S42DXAWt/tP6lREyq42PHqVuJqXY/n+0hVNOXw847EVOsYM1LixlU6AkLWx1vuO/w3b+IhMESLnXstYyOV7D4HnGZSuo1jakFxbWxZtiDzgsRXIudbXkIV232Omuvbw9ZFdGO+NaQscbfUtf8TLBUJFgxIA1JuANbafVk/pTolLmisb8+FvDnM9hSFYHee2WvSrFBlpAf6VP4SElzKiyjWxna9W8jlp0zpNpXoXijh8fCKDLTkG4+x9JbQ2XTrhQ4N1N1IPum4N8pup1UbwfWWZp2Gup3xRT5l9T2xcJzLrFFAEcRwjKYFz5/nyiinHBLSFtcfQv3X8tYoo0PUhMnpfsZINEWiinp0eI2NLQbGKKOhGMLRjNFFGSIsETAM8UUpFEZMHVqk74BjFFKpEmBqSM8UUYMRhgHacigRYExjRVI3GKKEKAOYMmKKcMjhe0G1czkUCKDWrGCapFFGCkBZ5ypVLWuYooRkhpsB2wBMUU5FBs5FFCE/9k=");
    }

    form {
        max-width: 400px;
        margin: 50px auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="text"],
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    select {
        appearance: none;
        -webkit-appearance: none;
        -moz-appearance: none;
        background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="%23333" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M6 9l6 6 6-6"></path></svg>');
        background-repeat: no-repeat;
        background-position: right 10px top 50%;
        background-size: 12px;
    }

    h2 {
        margin-top: 20px;
        margin-bottom: 10px;
        font-size: 18px;
        font-weight: bold;
    }

    input[type="submit"] {
        padding: 12px 20px;
        border: none;
        background-color: #007bff;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<form action="AddDoctorsServlet" method="post">
    <label for="dname">Enter Doctor Name</label>
    <input type="text" id="dname" name="dname">
    <br>
    <h4>Select Disease Specialization</h4>
    <select id="diseases" name="diseases" onchange="showAvailability()">
        <option value="">Select Disease</option>
        <option value="Flu">Flu</option>
        <option value="Common Cold">Common Cold</option>
        <option value="Headache">Headache</option>
    </select>
    <h2>Availability</h2>
    <select id="availability" name="availability">
        <option value="">Availability</option>
        <option value="Monday to Friday 9:00 AM to 5:00 PM">Monday to Friday, 9:00 AM to 5:00 PM</option>
        <option value="Tuesday, Thursday, Saturday 10:00 AM to 3:00 PM">Tuesday, Thursday, Saturday, 10:00 AM to 3:00 PM</option>
        <option value="Monday, Wednesday, Friday 8:00 AM to 6:00 PM">Monday, Wednesday, Friday, 8:00 AM to 6:00 PM</option>
    </select>
    <input type="submit" value="Submit">
</form>
</body>
</html>
