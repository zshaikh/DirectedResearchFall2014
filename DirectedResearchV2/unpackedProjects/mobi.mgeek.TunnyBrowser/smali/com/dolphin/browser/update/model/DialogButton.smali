.class public Lcom/dolphin/browser/update/model/DialogButton;
.super Ljava/lang/Object;
.source "DialogButton.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dolphin/browser/update/model/DialogButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/dolphin/browser/update/model/a;

    invoke-direct {v0}, Lcom/dolphin/browser/update/model/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/update/model/DialogButton;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/update/model/DialogButton;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/dolphin/browser/update/model/DialogButton;->c:I

    return p1
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/update/model/DialogButton;
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    if-eqz p0, :cond_0

    .line 84
    new-instance v0, Lcom/dolphin/browser/update/model/DialogButton;

    invoke-direct {v0}, Lcom/dolphin/browser/update/model/DialogButton;-><init>()V

    .line 85
    const-string v1, "btn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/DialogButton;->a:Ljava/lang/String;

    .line 86
    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/update/model/DialogButton;->b:Ljava/lang/String;

    .line 87
    const-string v1, "order"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/update/model/DialogButton;->c:I

    .line 89
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/update/model/DialogButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dolphin/browser/update/model/DialogButton;->a:Ljava/lang/String;

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
            "Lcom/dolphin/browser/update/model/DialogButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 99
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/update/model/DialogButton;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/update/model/DialogButton;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_0

    .line 101
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/update/model/DialogButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dolphin/browser/update/model/DialogButton;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/update/model/DialogButton;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/update/model/DialogButton;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/dolphin/browser/update/model/DialogButton;->c:I

    packed-switch v0, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 54
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 56
    :pswitch_1
    const/4 v0, -0x3

    goto :goto_0

    .line 58
    :pswitch_2
    const/4 v0, -0x2

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/update/model/DialogButton;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/update/model/DialogButton;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lcom/dolphin/browser/update/model/DialogButton;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return-void
.end method
