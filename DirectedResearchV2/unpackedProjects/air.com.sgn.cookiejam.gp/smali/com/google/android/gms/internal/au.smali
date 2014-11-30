.class public final Lcom/google/android/gms/internal/au;
.super Ljava/lang/Object;


# instance fields
.field public final fI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/at;",
            ">;"
        }
    .end annotation
.end field

.field public final fJ:J

.field public final fK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fN:Ljava/lang/String;

.field public final fO:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ct;->n(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation Response JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ct;->u(Ljava/lang/String;)V

    :cond_0
    const-string v1, "ad_networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/at;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/at;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/au;->fI:Ljava/util/List;

    const-string v1, "qdata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/au;->fN:Ljava/lang/String;

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "ad_network_timeout_millis"

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/au;->fJ:J

    const-string v1, "click_urls"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/az;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/au;->fK:Ljava/util/List;

    const-string v1, "imp_urls"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/az;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/au;->fL:Ljava/util/List;

    const-string v1, "nofill_urls"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/az;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/au;->fM:Ljava/util/List;

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/au;->fO:J

    :goto_2
    return-void

    :cond_2
    move-wide v0, v6

    goto :goto_1

    :cond_3
    iput-wide v6, p0, Lcom/google/android/gms/internal/au;->fJ:J

    iput-object v8, p0, Lcom/google/android/gms/internal/au;->fK:Ljava/util/List;

    iput-object v8, p0, Lcom/google/android/gms/internal/au;->fL:Ljava/util/List;

    iput-object v8, p0, Lcom/google/android/gms/internal/au;->fM:Ljava/util/List;

    iput-wide v6, p0, Lcom/google/android/gms/internal/au;->fO:J

    goto :goto_2
.end method
