.class Lcom/inmobi/androidsdk/ai/container/IMWebView$11;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$11;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 884
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$11;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    .line 885
    return-void
.end method
