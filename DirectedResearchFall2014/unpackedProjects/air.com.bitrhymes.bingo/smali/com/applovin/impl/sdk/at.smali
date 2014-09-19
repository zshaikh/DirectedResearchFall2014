.class Lcom/applovin/impl/sdk/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/l;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/applovin/impl/sdk/as;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/as;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    iput-object p2, p0, Lcom/applovin/impl/sdk/at;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p3, p0, Lcom/applovin/impl/sdk/at;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_2

    :cond_0
    move v0, v8

    :goto_0
    const/16 v1, -0x67

    if-eq p1, v1, :cond_3

    move v1, v8

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    invoke-static {v0}, Lcom/applovin/impl/sdk/as;->a(Lcom/applovin/impl/sdk/as;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/at;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/v;->p:Lcom/applovin/impl/sdk/x;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send requset due to server failure (code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    invoke-static {v4}, Lcom/applovin/impl/sdk/as;->a(Lcom/applovin/impl/sdk/as;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attempts left, retrying in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-double v4, v0

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    invoke-static {v2, v8}, Lcom/applovin/impl/sdk/as;->b(Lcom/applovin/impl/sdk/as;I)I

    iget-object v2, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    invoke-static {v2}, Lcom/applovin/impl/sdk/as;->a(Lcom/applovin/impl/sdk/as;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    invoke-static {v2}, Lcom/applovin/impl/sdk/as;->b(Lcom/applovin/impl/sdk/as;)V

    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/at;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/al;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    sget-object v4, Lcom/applovin/impl/sdk/am;->b:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/applovin/impl/sdk/al;->a(Lcom/applovin/impl/sdk/an;Lcom/applovin/impl/sdk/am;J)V

    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/as;->a(I)V

    goto :goto_2
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/as;->a(Lcom/applovin/impl/sdk/as;I)I

    iget-object v0, p0, Lcom/applovin/impl/sdk/at;->c:Lcom/applovin/impl/sdk/as;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/as;->a(Lorg/json/JSONObject;I)V

    return-void
.end method
