.class Lcom/chartboost/sdk/impl/ad$a;
.super Lcom/chartboost/sdk/impl/ad$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/af;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ad$c;-><init>(Lcom/chartboost/sdk/impl/af;)V

    .line 166
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 170
    check-cast p1, Lcom/chartboost/sdk/impl/au;

    .line 171
    new-instance v0, Lcom/chartboost/sdk/impl/w;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/w;-><init>()V

    .line 172
    const-string v1, "$code"

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/au;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ad$a;->a:Lcom/chartboost/sdk/impl/af;

    invoke-interface {v1, v0, p2}, Lcom/chartboost/sdk/impl/af;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 174
    return-void
.end method
