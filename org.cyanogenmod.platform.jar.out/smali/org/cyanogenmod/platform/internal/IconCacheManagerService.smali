.class public Lorg/cyanogenmod/platform/internal/IconCacheManagerService;
.super Lcom/android/server/SystemService;
.source "IconCacheManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/IconCacheManagerService$1;,
        Lorg/cyanogenmod/platform/internal/IconCacheManagerService$2;
    }
.end annotation


# static fields
.field private static final MAX_ICON_CACHE_SIZE:J = 0x2000000L

.field private static final PURGED_ICON_CACHE_SIZE:J = 0x1800000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconCacheSize:J

.field private mOldestFilesFirstComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mIconCacheSize:J

    return-wide v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mIconCacheSize:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->purgeIconCache()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mIconCacheSize:J

    .line 77
    new-instance v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mOldestFilesFirstComparator:Ljava/util/Comparator;

    .line 84
    new-instance v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mService:Landroid/os/IBinder;

    .line 49
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private purgeIconCache()V
    .locals 12

    .prologue
    .line 64
    sget-object v3, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Purging icon cahe of size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mIconCacheSize:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Ljava/io/File;

    sget-object v3, Lorg/cyanogenmod/internal/util/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 67
    .local v2, "files":[Ljava/io/File;
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mOldestFilesFirstComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 68
    const/4 v3, 0x0

    array-length v6, v2

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v1, v2, v3

    .line 69
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 71
    .local v4, "size":J
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-wide v8, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mIconCacheSize:J

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mIconCacheSize:J

    .line 73
    .end local v4    # "size":J
    :cond_0
    iget-wide v8, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mIconCacheSize:J

    const-wide/32 v10, 0x1800000

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    .line 63
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    return-void

    .line 68
    .restart local v1    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerIconCache cmiconcache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "org.cyanogenmod.theme"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "cmiconcache"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 53
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lorg/cyanogenmod/platform/internal/IconCacheManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "IconCache service started by system server but feature xml not declared. Not publishing binder service!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
