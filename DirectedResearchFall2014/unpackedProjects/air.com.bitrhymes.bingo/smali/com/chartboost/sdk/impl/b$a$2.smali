.class Lcom/chartboost/sdk/impl/b$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/b$a;-><init>(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/b$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/b$a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/b$a$2;->a:Lcom/chartboost/sdk/impl/b$a;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a$2;->a:Lcom/chartboost/sdk/impl/b$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/b$a;->a(Lcom/chartboost/sdk/impl/b$a;)Lcom/chartboost/sdk/impl/b;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a$2;->a:Lcom/chartboost/sdk/impl/b$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/b$a;->a(Lcom/chartboost/sdk/impl/b$a;)Lcom/chartboost/sdk/impl/b;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/c$c;

    invoke-interface {v0, v1, v1}, Lcom/chartboost/sdk/c$c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 67
    :cond_0
    return-void
.end method
