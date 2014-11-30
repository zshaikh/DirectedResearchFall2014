.class Lcom/pocketchange/android/webkit/JSWebView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/webkit/JSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/pocketchange/android/webkit/JSWebView;


# direct methods
.method public constructor <init>(Lcom/pocketchange/android/webkit/JSWebView;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/pocketchange/android/webkit/JSWebView$a;->a:Lcom/pocketchange/android/webkit/JSWebView;

    .line 100
    return-void
.end method


# virtual methods
.method public setSupportsJNI(Z)V
    .locals 1
    .param p1, "supported"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pocketchange/android/webkit/JSWebView$a;->a:Lcom/pocketchange/android/webkit/JSWebView;

    invoke-virtual {v0, p1}, Lcom/pocketchange/android/webkit/JSWebView;->setSupportsJNI(Z)V

    .line 105
    return-void
.end method
