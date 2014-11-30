.class final Lc/m/x/a/gv/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lc/m/x/a/gv/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Landroid/os/Bundle;

.field j:Landroid/os/Bundle;

.field k:Lc/m/x/a/gv/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/m/x/a/gv/u;

    invoke-direct {v0}, Lc/m/x/a/gv/u;-><init>()V

    sput-object v0, Lc/m/x/a/gv/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/t;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/t;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lc/m/x/a/gv/t;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/t;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/m/x/a/gv/t;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/t;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lc/m/x/a/gv/t;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lc/m/x/a/gv/t;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/t;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/t;->j:Landroid/os/Bundle;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public constructor <init>(Lc/m/x/a/gv/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/t;->a:Ljava/lang/String;

    iget v0, p1, Lc/m/x/a/gv/e;->mIndex:I

    iput v0, p0, Lc/m/x/a/gv/t;->b:I

    iget-boolean v0, p1, Lc/m/x/a/gv/e;->mFromLayout:Z

    iput-boolean v0, p0, Lc/m/x/a/gv/t;->c:Z

    iget v0, p1, Lc/m/x/a/gv/e;->mFragmentId:I

    iput v0, p0, Lc/m/x/a/gv/t;->d:I

    iget v0, p1, Lc/m/x/a/gv/e;->mContainerId:I

    iput v0, p0, Lc/m/x/a/gv/t;->e:I

    iget-object v0, p1, Lc/m/x/a/gv/e;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lc/m/x/a/gv/t;->f:Ljava/lang/String;

    iget-boolean v0, p1, Lc/m/x/a/gv/e;->mRetainInstance:Z

    iput-boolean v0, p0, Lc/m/x/a/gv/t;->g:Z

    iget-boolean v0, p1, Lc/m/x/a/gv/e;->mDetached:Z

    iput-boolean v0, p0, Lc/m/x/a/gv/t;->h:Z

    iget-object v0, p1, Lc/m/x/a/gv/e;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Lc/m/x/a/gv/t;->i:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lc/m/x/a/gv/j;Lc/m/x/a/gv/e;)Lc/m/x/a/gv/e;
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/t;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/t;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Lc/m/x/a/gv/j;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/t;->a:Ljava/lang/String;

    iget-object v1, p0, Lc/m/x/a/gv/t;->i:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lc/m/x/a/gv/e;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lc/m/x/a/gv/e;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget-object v0, p0, Lc/m/x/a/gv/t;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/t;->j:Landroid/os/Bundle;

    invoke-virtual {p1}, Lc/m/x/a/gv/j;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget-object v1, p0, Lc/m/x/a/gv/t;->j:Landroid/os/Bundle;

    iput-object v1, v0, Lc/m/x/a/gv/e;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget v1, p0, Lc/m/x/a/gv/t;->b:I

    invoke-virtual {v0, v1, p2}, Lc/m/x/a/gv/e;->setIndex(ILc/m/x/a/gv/e;)V

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget-boolean v1, p0, Lc/m/x/a/gv/t;->c:Z

    iput-boolean v1, v0, Lc/m/x/a/gv/e;->mFromLayout:Z

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/m/x/a/gv/e;->mRestored:Z

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget v1, p0, Lc/m/x/a/gv/t;->d:I

    iput v1, v0, Lc/m/x/a/gv/e;->mFragmentId:I

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget v1, p0, Lc/m/x/a/gv/t;->e:I

    iput v1, v0, Lc/m/x/a/gv/e;->mContainerId:I

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget-object v1, p0, Lc/m/x/a/gv/t;->f:Ljava/lang/String;

    iput-object v1, v0, Lc/m/x/a/gv/e;->mTag:Ljava/lang/String;

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget-boolean v1, p0, Lc/m/x/a/gv/t;->g:Z

    iput-boolean v1, v0, Lc/m/x/a/gv/e;->mRetainInstance:Z

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget-boolean v1, p0, Lc/m/x/a/gv/t;->h:Z

    iput-boolean v1, v0, Lc/m/x/a/gv/e;->mDetached:Z

    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    iget-object v1, p1, Lc/m/x/a/gv/j;->b:Lc/m/x/a/gv/o;

    iput-object v1, v0, Lc/m/x/a/gv/e;->mFragmentManager:Lc/m/x/a/gv/o;

    sget-boolean v0, Lc/m/x/a/gv/o;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiated fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/t;->k:Lc/m/x/a/gv/e;

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/t;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/t;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lc/m/x/a/gv/t;->c:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lc/m/x/a/gv/t;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lc/m/x/a/gv/t;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lc/m/x/a/gv/t;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/t;->g:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lc/m/x/a/gv/t;->h:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lc/m/x/a/gv/t;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lc/m/x/a/gv/t;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
