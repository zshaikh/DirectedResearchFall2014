.class final Lcom/acmeaom/android/myradar/app/a/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/a/g;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/app/a/g;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a/g;->a:Lorg/json/JSONObject;

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/a/g;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method
