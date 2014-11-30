.class Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity$1;
.super Landroid/webkit/WebViewClient;
.source "PaypalSlotomaniaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->launchWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity$1;->this$0:Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;

    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    const-string v0, "WebViewClient"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "http://vs-fb-stage3.stagika.com/stage/vs_fb_en/php/view/paypage/paypal_complete.php?success=true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->getInstance()Lcom/playtika/extensions/paypal/PaypalExtensionContext;

    move-result-object v0

    .line 64
    const/4 v1, -0x1

    .line 63
    invoke-virtual {v0, v2, v1, v3}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->paypalResponseCallback(IILandroid/content/Intent;)V

    .line 65
    iget-object v0, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity$1;->this$0:Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;

    invoke-virtual {v0}, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->finish()V

    .line 68
    :cond_0
    const-string v0, "http://vs-fb-stage3.stagika.com/stage/vs_fb_en/php/view/paypage/paypal_complete.php?success=false"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->getInstance()Lcom/playtika/extensions/paypal/PaypalExtensionContext;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v3}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->paypalResponseCallback(IILandroid/content/Intent;)V

    .line 73
    iget-object v0, p0, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity$1;->this$0:Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;

    invoke-virtual {v0}, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;->finish()V

    .line 75
    :cond_1
    return-void
.end method
