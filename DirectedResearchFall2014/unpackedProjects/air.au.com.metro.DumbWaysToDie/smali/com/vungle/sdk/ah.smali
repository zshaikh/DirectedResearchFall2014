.class public abstract Lcom/vungle/sdk/ah;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/ah$a;,
        Lcom/vungle/sdk/ah$b;
    }
.end annotation


# instance fields
.field protected final a:Landroid/os/Bundle;

.field public b:Lcom/vungle/sdk/ak;

.field private c:Lcom/vungle/sdk/al;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/ah;->a:Landroid/os/Bundle;

    .line 32
    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->d()V

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/vungle/sdk/ah$b;
.end method

.method protected abstract b()Lcom/vungle/sdk/ah$a;
.end method

.method public b(Landroid/os/Parcel;)Lcom/vungle/sdk/ah;
    .locals 2
    .parameter

    .prologue
    .line 125
    const-class v0, Lcom/vungle/sdk/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/ak;

    iput-object v0, p0, Lcom/vungle/sdk/ah;->b:Lcom/vungle/sdk/ak;

    .line 127
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/al;

    iput-object v0, p0, Lcom/vungle/sdk/ah;->c:Lcom/vungle/sdk/al;

    .line 128
    return-object p0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public d()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vungle/sdk/ah;->a:Landroid/os/Bundle;

    const-string v1, "User-Agent"

    const-string v2, "VungleDroid/1.3.10"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()Z
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->c()Ljava/lang/String;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->g()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vungle/sdk/ah;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vungle/sdk/ah;->c:Lcom/vungle/sdk/al;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/vungle/sdk/al;

    invoke-direct {v0}, Lcom/vungle/sdk/al;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/ah;->c:Lcom/vungle/sdk/al;

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/ah;->c:Lcom/vungle/sdk/al;

    invoke-virtual {v0}, Lcom/vungle/sdk/al;->d()V

    goto :goto_0
.end method

.method public final j()Lcom/vungle/sdk/al;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vungle/sdk/ah;->c:Lcom/vungle/sdk/al;

    return-object v0
.end method

.method protected final k()Lcom/vungle/sdk/ak;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vungle/sdk/ah;->b:Lcom/vungle/sdk/ak;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/sdk/ah;->a()Lcom/vungle/sdk/ah$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vungle/sdk/ah;->b:Lcom/vungle/sdk/ak;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    iget-object v0, p0, Lcom/vungle/sdk/ah;->c:Lcom/vungle/sdk/al;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    return-void
.end method
