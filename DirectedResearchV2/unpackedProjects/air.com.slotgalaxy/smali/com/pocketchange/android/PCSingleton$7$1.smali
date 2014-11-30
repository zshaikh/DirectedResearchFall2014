.class Lcom/pocketchange/android/PCSingleton$7$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton$17;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$17;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$7$1;->a:Lcom/pocketchange/android/PCSingleton$17;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 726
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 727
    return-void
.end method
