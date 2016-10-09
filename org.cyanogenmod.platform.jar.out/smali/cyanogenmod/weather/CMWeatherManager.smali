.class public Lcyanogenmod/weather/CMWeatherManager;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/CMWeatherManager$RequestStatus;,
        Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;,
        Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;,
        Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;,
        Lcyanogenmod/weather/CMWeatherManager$1;,
        Lcyanogenmod/weather/CMWeatherManager$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcyanogenmod/weather/CMWeatherManager;

.field private static sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLookupNameRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            "Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

.field private mProviderChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

.field private mWeatherUpdateRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            "Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcyanogenmod/weather/CMWeatherManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get3(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcyanogenmod/weather/CMWeatherManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/weather/CMWeatherManager;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 45
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 47
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    .line 50
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    .line 291
    new-instance v1, Lcyanogenmod/weather/CMWeatherManager$1;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/CMWeatherManager$1;-><init>(Lcyanogenmod/weather/CMWeatherManager;)V

    .line 290
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .line 319
    new-instance v1, Lcyanogenmod/weather/CMWeatherManager$2;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/CMWeatherManager$2;-><init>(Lcyanogenmod/weather/CMWeatherManager;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcyanogenmod/weather/CMWeatherManager;->getService()Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 90
    const-string/jumbo v2, "org.cyanogenmod.weather"

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to bind the CMWeatherManagerService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, p1

    .line 86
    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/weather/CMWeatherManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcyanogenmod/weather/CMWeatherManager;

    invoke-direct {v0, p0}, Lcyanogenmod/weather/CMWeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    .line 105
    :cond_0
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/weather/ICMWeatherManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    return-object v1

    .line 113
    :cond_0
    const-string/jumbo v1, "cmweather"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 114
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 115
    invoke-static {v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 116
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    return-object v1

    .line 118
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cancelRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 219
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    .line 220
    return-void

    .line 224
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v1, p1}, Lcyanogenmod/weather/ICMWeatherManager;->cancelRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-object v2

    .line 284
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v1}, Lcyanogenmod/weather/ICMWeatherManager;->getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 285
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public lookupCity(Ljava/lang/String;Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;)I
    .locals 5
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    .prologue
    const/4 v4, -0x1

    .line 198
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v2, :cond_0

    .line 199
    return v4

    .line 202
    :cond_0
    :try_start_0
    new-instance v2, Lcyanogenmod/weather/RequestInfo$Builder;

    .line 203
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 202
    invoke-direct {v2, v3}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v2, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setCityName(Ljava/lang/String;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .line 206
    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_1
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v2, v1}, Lcyanogenmod/weather/ICMWeatherManager;->lookupCity(Lcyanogenmod/weather/RequestInfo;)V

    .line 208
    invoke-virtual {v1}, Lcyanogenmod/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 209
    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    .line 236
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v2

    .line 239
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 242
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 244
    :try_start_2
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 245
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .line 244
    invoke-interface {v1, v3}, Lcyanogenmod/weather/ICMWeatherManager;->registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :cond_2
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 235
    return-void

    .line 246
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestWeatherUpdate(Landroid/location/Location;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;)I
    .locals 5
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    const/4 v4, -0x1

    .line 135
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v2, :cond_0

    .line 136
    return v4

    .line 140
    :cond_0
    :try_start_0
    new-instance v2, Lcyanogenmod/weather/RequestInfo$Builder;

    .line 141
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 140
    invoke-direct {v2, v3}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v2, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setLocation(Landroid/location/Location;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .line 144
    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v2, v1}, Lcyanogenmod/weather/ICMWeatherManager;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V

    .line 146
    invoke-virtual {v1}, Lcyanogenmod/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 147
    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public requestWeatherUpdate(Lcyanogenmod/weather/WeatherLocation;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;)I
    .locals 5
    .param p1, "weatherLocation"    # Lcyanogenmod/weather/WeatherLocation;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    const/4 v4, -0x1

    .line 168
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v2, :cond_0

    .line 169
    return v4

    .line 173
    :cond_0
    :try_start_0
    new-instance v2, Lcyanogenmod/weather/RequestInfo$Builder;

    .line 174
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 173
    invoke-direct {v2, v3}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v2, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setWeatherLocation(Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .line 177
    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_1
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v2, v1}, Lcyanogenmod/weather/ICMWeatherManager;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V

    .line 179
    invoke-virtual {v1}, Lcyanogenmod/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 180
    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    .line 259
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener was never registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 265
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 266
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 268
    :try_start_2
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    .line 269
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .line 268
    invoke-interface {v1, v3}, Lcyanogenmod/weather/ICMWeatherManager;->unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    .line 258
    return-void

    .line 270
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
