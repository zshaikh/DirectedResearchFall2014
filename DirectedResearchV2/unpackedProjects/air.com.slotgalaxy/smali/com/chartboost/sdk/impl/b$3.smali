.class Lcom/chartboost/sdk/impl/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Libraries/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/b;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/b$3;->a:Lcom/chartboost/sdk/impl/b;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/a$a;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$3;->a:Lcom/chartboost/sdk/impl/b;

    iput-object p1, v0, Lcom/chartboost/sdk/impl/b;->k:Lcom/chartboost/sdk/Libraries/a$a;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$3;->a:Lcom/chartboost/sdk/impl/b;

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/Libraries/a$a;)V

    return-void
.end method
