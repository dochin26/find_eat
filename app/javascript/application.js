// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

// 位置情報取得機能
window.LocationService = {
  getCurrentPosition: function() {
    return new Promise((resolve, reject) => {
      if (!navigator.geolocation) {
        reject(new Error('位置情報がサポートされていません'));
        return;
      }
      
      navigator.geolocation.getCurrentPosition(
        (position) => {
          resolve({
            latitude: position.coords.latitude,
            longitude: position.coords.longitude
          });
        },
        (error) => {
          let errorMessage = '位置情報を取得できませんでした';
          switch(error.code) {
            case error.PERMISSION_DENIED:
              errorMessage = '位置情報の利用が拒否されました';
              break;
            case error.POSITION_UNAVAILABLE:
              errorMessage = '位置情報が利用できません';
              break;
            case error.TIMEOUT:
              errorMessage = '位置情報の取得がタイムアウトしました';
              break;
          }
          reject(new Error(errorMessage));
        },
        {
          enableHighAccuracy: true,
          timeout: 10000,
          maximumAge: 60000
        }
      );
    });
  }
};

// マップ機能
window.MapService = {
  openNearbyRestaurants: function(foodName, latitude, longitude) {
    const query = encodeURIComponent(foodName);
    const coords = `${latitude},${longitude}`;
    
    // Google Maps URLを生成
    const googleMapsUrl = `https://www.google.com/maps/search/${query}/@${coords},15z`;
    
    // 新しいタブでGoogle Mapsを開く
    window.open(googleMapsUrl, '_blank');
  },
  
  searchNearbyRestaurants: function(foodName) {
    // 位置情報取得とマップ表示を連携
    LocationService.getCurrentPosition()
      .then(position => {
        this.openNearbyRestaurants(foodName, position.latitude, position.longitude);
      })
      .catch(error => {
        alert(error.message);
        // 位置情報取得失敗時は、料理名のみで検索
        const query = encodeURIComponent(foodName);
        const fallbackUrl = `https://www.google.com/maps/search/${query}`;
        window.open(fallbackUrl, '_blank');
      });
  }
};
