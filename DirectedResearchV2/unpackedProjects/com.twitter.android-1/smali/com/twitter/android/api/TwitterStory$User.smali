.class public Lcom/twitter/android/api/TwitterStory$User;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x10c85b19b5ea869L


# instance fields
.field public final description:Ljava/lang/String;

.field public final isProtected:Z

.field public final name:Ljava/lang/String;

.field public final profileImageUrl:Ljava/lang/String;

.field public final userId:J

.field public final username:Ljava/lang/String;

.field public final verified:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/TwitterStory$User;->userId:J

    iput-object p3, p0, Lcom/twitter/android/api/TwitterStory$User;->username:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/api/TwitterStory$User;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/api/TwitterStory$User;->description:Ljava/lang/String;

    iput-object p6, p0, Lcom/twitter/android/api/TwitterStory$User;->profileImageUrl:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/twitter/android/api/TwitterStory$User;->isProtected:Z

    iput-boolean p8, p0, Lcom/twitter/android/api/TwitterStory$User;->verified:Z

    return-void
.end method
