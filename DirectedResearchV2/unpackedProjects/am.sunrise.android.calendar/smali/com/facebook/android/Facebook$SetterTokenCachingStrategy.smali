.class Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;
.super Lcom/facebook/TokenCachingStrategy;
.source "Facebook.java"


# instance fields
.field final synthetic this$0:Lcom/facebook/android/Facebook;


# direct methods
.method private constructor <init>(Lcom/facebook/android/Facebook;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$1;)V
    .locals 0

    .prologue
    .line 1155
    invoke-direct {p0, p1}, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;-><init>(Lcom/facebook/android/Facebook;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    const/4 v1, 0x0

    # setter for: Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/android/Facebook;->access$102(Lcom/facebook/android/Facebook;Ljava/lang/String;)Ljava/lang/String;

    .line 1183
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1161
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    # getter for: Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$100(Lcom/facebook/android/Facebook;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    # getter for: Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$100(Lcom/facebook/android/Facebook;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/TokenCachingStrategy;->putToken(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1163
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    # getter for: Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J
    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$400(Lcom/facebook/android/Facebook;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putExpirationMilliseconds(Landroid/os/Bundle;J)V

    .line 1164
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    # getter for: Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$500(Lcom/facebook/android/Facebook;)[Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/facebook/android/Facebook;->stringList([Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$600([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/TokenCachingStrategy;->putPermissions(Landroid/os/Bundle;Ljava/util/List;)V

    .line 1165
    sget-object v1, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    invoke-static {v0, v1}, Lcom/facebook/TokenCachingStrategy;->putSource(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)V

    .line 1166
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    # getter for: Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J
    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$700(Lcom/facebook/android/Facebook;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putLastRefreshMilliseconds(Landroid/os/Bundle;J)V

    .line 1169
    :cond_0
    return-object v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCachingStrategy;->getToken(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/android/Facebook;->access$102(Lcom/facebook/android/Facebook;Ljava/lang/String;)Ljava/lang/String;

    .line 1175
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCachingStrategy;->getExpirationMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v1

    # setter for: Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J
    invoke-static {v0, v1, v2}, Lcom/facebook/android/Facebook;->access$402(Lcom/facebook/android/Facebook;J)J

    .line 1176
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCachingStrategy;->getPermissions(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/facebook/android/Facebook;->stringArray(Ljava/util/List;)[Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$800(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/android/Facebook;->access$502(Lcom/facebook/android/Facebook;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1177
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCachingStrategy;->getLastRefreshMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v1

    # setter for: Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J
    invoke-static {v0, v1, v2}, Lcom/facebook/android/Facebook;->access$702(Lcom/facebook/android/Facebook;J)J

    .line 1178
    return-void
.end method
