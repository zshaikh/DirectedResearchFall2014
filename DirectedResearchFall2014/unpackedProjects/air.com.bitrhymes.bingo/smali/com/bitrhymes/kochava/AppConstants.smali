.class public Lcom/bitrhymes/kochava/AppConstants;
.super Ljava/lang/Object;
.source "AppConstants.java"


# static fields
.field public static final ERROR_EVENT:Ljava/lang/String; = "ERROR_EVENT"

.field public static final REQUEST_CODE_FB_AUTH:I = 0xa

.field static kochavaObj:Lcom/kochava/android/tracker/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/bitrhymes/kochava/AppConstants;->kochavaObj:Lcom/kochava/android/tracker/Feature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKochavaInstance(Landroid/app/Activity;Ljava/lang/String;)Lcom/kochava/android/tracker/Feature;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/bitrhymes/kochava/AppConstants;->kochavaObj:Lcom/kochava/android/tracker/Feature;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/kochava/android/tracker/Feature;

    const-string v1, "USD"

    invoke-direct {v0, p0, p1, v1}, Lcom/kochava/android/tracker/Feature;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bitrhymes/kochava/AppConstants;->kochavaObj:Lcom/kochava/android/tracker/Feature;

    .line 19
    :cond_0
    sget-object v0, Lcom/bitrhymes/kochava/AppConstants;->kochavaObj:Lcom/kochava/android/tracker/Feature;

    return-object v0
.end method
