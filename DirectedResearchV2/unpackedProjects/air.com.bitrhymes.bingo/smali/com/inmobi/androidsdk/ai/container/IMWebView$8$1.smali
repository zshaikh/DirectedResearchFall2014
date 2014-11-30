.class Lcom/inmobi/androidsdk/ai/container/IMWebView$8$1;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView$8;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView$8;

.field private final synthetic b:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView$8;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView$8;

    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8$1;->b:Landroid/webkit/JsResult;

    .line 1582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8$1;->b:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 1586
    return-void
.end method
