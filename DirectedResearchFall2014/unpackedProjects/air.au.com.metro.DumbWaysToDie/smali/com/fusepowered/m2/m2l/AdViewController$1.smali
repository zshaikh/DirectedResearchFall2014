.class Lcom/fusepowered/m2/m2l/AdViewController$1;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/AdViewController;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/MoPubView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/AdViewController;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/AdViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdViewController$1;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdViewController$1;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->loadAd()V

    .line 111
    return-void
.end method
