<?php
class City extends AbstractItem
{
    private $name;
    private $number_of_inhabitants;
    private $coordinate_x;
    private $coordinate_y;
    private $temperatuur;
    private $omschrijving;


    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }


    /**
     * @return mixed
     */
    public function getNumberOfInhabitants()
    {
        return $this->number_of_inhabitants;
    }

    /**
     * @param mixed $number_of_inhabitants
     */
    public function setNumberOfInhabitants($number_of_inhabitants)
    {
        $this->number_of_inhabitants = $number_of_inhabitants;
    }

    /**
     * @return mixed
     */
    public function getCoordinateX()
    {
        return $this->coordinate_x;
    }

    /**
     * @param mixed $coordinate_x
     */
    public function setCoordinateX($coordinate_x)
    {
        $this->coordinate_x = $coordinate_x;
    }

    /**
     * @return mixed
     */
    public function getCoordinateY()
    {
        return $this->coordinate_y;
    }

    /**
     * @param mixed $coordinate_y
     */
    public function setCoordinateY($coordinate_y)
    {
        $this->coordinate_y = $coordinate_y;
    }

    public function Coordinates()
    {
        return $this->coordinate_x . " / " . $this->coordinate_y;
    }

    /**
     * @return mixed
     */
    public function getTemperatuur()
    {
        return $this->temperatuur;
    }

    public function getOmschrijving()
    {
        return $this->omschrijving;
    }

    public function getWeather()
    {
        $url = "http://api.openweathermap.org/data/2.5/weather?q=$this->name&APPID=1f74ccbc2170d9852a58341a8554efda&lang=nl&units=metric";

        $curl = curl_init();
        $headers = array();
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_TIMEOUT, 30);
        $json = curl_exec($curl);
        curl_close($curl);

        $data = json_decode($json, true);

        $this->temperatuur = $data['main']['temp'];
        $this->omschrijving = $data['weather'][0]['description'];
    }
}