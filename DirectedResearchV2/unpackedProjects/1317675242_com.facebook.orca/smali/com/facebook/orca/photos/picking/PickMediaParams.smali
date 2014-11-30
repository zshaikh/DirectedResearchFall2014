.class public Lcom/facebook/orca/photos/picking/PickMediaParams;
.super Ljava/lang/Object;
.source "PickMediaParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/photos/picking/PickMediaParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CAMERA:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->GALLERY:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->IMAGE_SEARCH:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    sget-object v3, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CANCEL:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/photos/picking/PickMediaParams;->a:Ljava/util/EnumSet;

    .line 122
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/photos/picking/PickMediaParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/photos/picking/PickMediaParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->b:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->c:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->d:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->e:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->f:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->g:I

    .line 47
    const-class v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->h:Ljava/util/EnumSet;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 49
    :goto_1
    if-ge v1, v0, :cond_1

    .line 50
    iget-object v2, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->h:Ljava/util/EnumSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 41
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/photos/picking/PickMediaParams$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/orca/photos/picking/PickMediaParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->b:Ljava/lang/String;

    .line 34
    if-eqz p1, :cond_0

    sget-object v0, Lcom/facebook/orca/photos/picking/PickMediaParams;->a:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->h:Ljava/util/EnumSet;

    .line 37
    return-void

    .line 34
    :cond_0
    const-class v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/photos/picking/PickMediaParams;
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->d:I

    .line 74
    return-object p0
.end method

.method public a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->h:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/photos/picking/PickMediaParams;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->b:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/photos/picking/PickMediaParams;
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->c:Z

    .line 65
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Lcom/facebook/orca/photos/picking/PickMediaParams;
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->e:I

    .line 83
    return-object p0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->d:I

    return v0
.end method

.method public c(I)Lcom/facebook/orca/photos/picking/PickMediaParams;
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->f:I

    .line 92
    return-object p0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->e:I

    return v0
.end method

.method public d(I)Lcom/facebook/orca/photos/picking/PickMediaParams;
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->g:I

    .line 101
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->g:I

    return v0
.end method

.method public g()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->h:Ljava/util/EnumSet;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->h:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaParams;->h:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 149
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method
