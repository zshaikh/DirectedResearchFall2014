.class public Lcom/twitter/android/provider/ActivityDataUser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4704d1fc39b180e9L


# instance fields
.field public final id:J

.field public final name:Ljava/lang/String;

.field public final profileImageUrl:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twitter/android/api/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/twitter/android/api/c;->a:J

    iput-wide v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iget-object v0, p1, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->profileImageUrl:Ljava/lang/String;

    return-void
.end method
