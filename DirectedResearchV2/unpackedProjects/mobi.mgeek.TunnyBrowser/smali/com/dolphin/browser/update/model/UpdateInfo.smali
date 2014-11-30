.class public Lcom/dolphin/browser/update/model/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/DialogButton;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/dolphin/browser/update/model/c;

    invoke-direct {v0}, Lcom/dolphin/browser/update/model/c;-><init>()V

    sput-object v0, Lcom/dolphin/browser/update/model/UpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->c:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->b:Z

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/update/model/UpdateInfo;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->e:I

    return p1
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/update/model/UpdateInfo;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/dolphin/browser/update/model/UpdateInfo;

    invoke-direct {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;-><init>()V

    .line 53
    if-eqz p0, :cond_0

    .line 54
    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->a:Ljava/lang/String;

    .line 55
    const-string v1, "version_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->d:Ljava/lang/String;

    .line 56
    const-string v1, "version_code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->e:I

    .line 57
    const-string v1, "channel_promote"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->f:Z

    .line 58
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->g:Ljava/lang/String;

    .line 59
    const-string v1, "content_title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->h:Ljava/lang/String;

    .line 60
    const-string v1, "update_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->i:Ljava/lang/String;

    .line 61
    const-string v1, "change_log"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->j:Ljava/lang/String;

    .line 62
    const-string v1, "button"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/update/model/DialogButton;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->k:Ljava/util/List;

    .line 64
    const-string v1, "is_force"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->c:Z

    .line 65
    const-string v1, "is_auto"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->b:Z

    .line 66
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/UpdateInfo;->l:Ljava/lang/String;

    .line 68
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/update/model/UpdateInfo;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->k:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/update/model/UpdateInfo;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/update/model/UpdateInfo;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/dolphin/browser/update/model/UpdateInfo;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    return-object v1
.end method

.method static synthetic b(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/dolphin/browser/update/model/UpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->j:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/DialogButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->k:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->c:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->b:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->e:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->k:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/bw;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 214
    iget v2, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->e:I

    if-le v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/update/model/UpdateInfo;->k:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 232
    return-void
.end method
