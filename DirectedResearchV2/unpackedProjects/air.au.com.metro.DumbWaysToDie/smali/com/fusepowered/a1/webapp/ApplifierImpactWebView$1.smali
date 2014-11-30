.class Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$1;
.super Ljava/lang/Object;
.source "ApplifierImpactWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$1;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method
