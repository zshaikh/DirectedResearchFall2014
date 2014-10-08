.class Lcom/fusepowered/m2/m2l/MraidActivity$4;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/M2RActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/M2RActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/M2RActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidActivity$4;->this$0:Lcom/fusepowered/m2/m2l/M2RActivity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseButtonStateChange(Lcom/fusepowered/m2/m2l/MraidView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;
    .param p2, "enabled"    # Z

    .prologue
    .line 132
    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidActivity$4;->this$0:Lcom/fusepowered/m2/m2l/M2RActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/M2RActivity;->showInterstitialCloseButton()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidActivity$4;->this$0:Lcom/fusepowered/m2/m2l/M2RActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/M2RActivity;->hideInterstitialCloseButton()V

    goto :goto_0
.end method
