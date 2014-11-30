.class public interface abstract Lcom/redbox/android/utils/Configuration$URLS;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/utils/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "URLS"
.end annotation


# static fields
.field public static final ACCOUNT_LOGIN:Ljava/lang/String;

.field public static final CAPTCHA:Ljava/lang/String;

.field public static final CAPTCHA_IMAGE:Ljava/lang/String; = "/Account"

.field public static final CART_ADD_ITEM:Ljava/lang/String;

.field public static final CART_REFRESH:Ljava/lang/String;

.field public static final CHANGE_PASSWORD:Ljava/lang/String;

.field public static final CREATE_ACCOUNT:Ljava/lang/String;

.field public static final GET_CARDS:Ljava/lang/String;

.field public static final KIOSKS:Ljava/lang/String;

.field public static final KIOSKSTATE:Ljava/lang/String;

.field public static final LOOKUP:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/geocode/json?address="

.field public static final MOBILE_INIT:Ljava/lang/String;

.field public static final MOVIE_DETAIL:Ljava/lang/String;

.field public static final MOVIE_LIST:Ljava/lang/String; = "/data.svc/Title/js"

.field public static final MOVIE_TITLE_IMAGE_PATH:Ljava/lang/String; = "http://images.redbox.com/Images/Full/"

.field public static final RESERVE_MOVIE:Ljava/lang/String;

.field public static final RESET_PASSWORD:Ljava/lang/String;

.field public static final SAVE_CARD:Ljava/lang/String;

.field public static final THUMBNAIL_IMAGE_PATH:Ljava/lang/String; = "http://images.redbox.com/Images/Thumbnails/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Title"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v1, "/Get/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->MOVIE_DETAIL:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Mobile"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v1, "/Init"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->MOBILE_INIT:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    const-string v1, "Account/Login/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->ACCOUNT_LOGIN:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Account"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v1, "/GetCaptcha/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->CAPTCHA:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Account"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v1, "/Create/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->CREATE_ACCOUNT:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Kiosk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v1, "/GetNearbyKiosks/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->KIOSKS:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Account"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v1, "/GetCards/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->GET_CARDS:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Cart"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v1, "/AddItem/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->CART_ADD_ITEM:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Cart"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v1, "/Refresh/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->CART_REFRESH:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Kiosk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v1, "/GetKiosksState/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->KIOSKSTATE:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Cart"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v1, "/Reserve/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->RESERVE_MOVIE:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Account"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v1, "/SaveCard/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->SAVE_CARD:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Account"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "/ResetPassword2/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->RESET_PASSWORD:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ajax.svc/Account"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    const-string v1, "/ChangePassword/"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/redbox/android/utils/Configuration$URLS;->CHANGE_PASSWORD:Ljava/lang/String;

    .line 33
    return-void
.end method
