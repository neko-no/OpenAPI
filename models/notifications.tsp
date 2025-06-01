namespace MyCompany;

model Notification {
    id: string;
    title: string;
    content: string;
    sentAt?: utcDateTime;
}
