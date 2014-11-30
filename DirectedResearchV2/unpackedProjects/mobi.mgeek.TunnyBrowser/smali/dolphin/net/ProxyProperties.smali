.class public Ldolphin/net/ProxyProperties;
.super Ljava/lang/Object;
.source "ProxyProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldolphin/net/ProxyProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Ldolphin/net/d;

    invoke-direct {v0}, Ldolphin/net/d;-><init>()V

    sput-object v0, Ldolphin/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    .line 43
    iput p2, p0, Ldolphin/net/ProxyProperties;->b:I

    .line 44
    invoke-direct {p0, p3}, Ldolphin/net/ProxyProperties;->a(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    .line 49
    iput p2, p0, Ldolphin/net/ProxyProperties;->b:I

    .line 50
    iput-object p3, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Ldolphin/net/ProxyProperties;->d:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ldolphin/net/d;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Ldolphin/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 87
    iput-object p1, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 89
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ldolphin/net/ProxyProperties;->d:[Ljava/lang/String;

    .line 100
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 92
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Ldolphin/net/ProxyProperties;->d:[Ljava/lang/String;

    .line 93
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 94
    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_2
    iget-object v3, p0, Ldolphin/net/ProxyProperties;->d:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    aput-object v1, v3, v4

    .line 97
    iget-object v3, p0, Ldolphin/net/ProxyProperties;->d:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Ldolphin/net/ProxyProperties;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    instance-of v1, p1, Ldolphin/net/ProxyProperties;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    check-cast p1, Ldolphin/net/ProxyProperties;

    .line 151
    iget-object v1, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ldolphin/net/ProxyProperties;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :cond_2
    iget-object v1, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ldolphin/net/ProxyProperties;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ldolphin/net/ProxyProperties;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    :cond_3
    iget-object v1, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 156
    :cond_4
    iget-object v1, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 157
    :cond_5
    iget v1, p0, Ldolphin/net/ProxyProperties;->b:I

    iget v2, p1, Ldolphin/net/ProxyProperties;->b:I

    if-ne v1, v2, :cond_0

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Ldolphin/net/ProxyProperties;->b:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    iget-object v1, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 134
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Ldolphin/net/ProxyProperties;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 139
    const-string v1, " xl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_1
    const-string v1, "[ProxyProperties.mHost == null]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 186
    iget-object v0, p0, Ldolphin/net/ProxyProperties;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget v0, p0, Ldolphin/net/ProxyProperties;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    :goto_0
    iget-object v0, p0, Ldolphin/net/ProxyProperties;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Ldolphin/net/ProxyProperties;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 193
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method
