.class Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$1;
.super Ljava/lang/Object;
.source "BaseInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->createInterstitialCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$1;->this$0:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$1;->this$0:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->finish()V

    .line 155
    return-void
.end method
