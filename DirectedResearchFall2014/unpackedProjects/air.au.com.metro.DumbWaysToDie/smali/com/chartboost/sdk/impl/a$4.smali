.class Lcom/chartboost/sdk/impl/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/a;-><init>(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/a$c;Lcom/chartboost/sdk/impl/a$a;Lcom/chartboost/sdk/impl/a$b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/a;

.field private final synthetic b:Lcom/chartboost/sdk/impl/a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/a$4;->a:Lcom/chartboost/sdk/impl/a;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/a$4;->b:Lcom/chartboost/sdk/impl/a;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$4;->b:Lcom/chartboost/sdk/impl/a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->g:Lcom/chartboost/sdk/impl/a$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$4;->b:Lcom/chartboost/sdk/impl/a;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/a$a;->c(Lcom/chartboost/sdk/impl/a;)V

    .line 143
    return-void
.end method
