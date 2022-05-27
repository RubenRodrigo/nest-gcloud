import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    console.log(process.env.NODE_ENV);
    return `Hello World! FUCK GCLOUD RUN ${process.env.NODE_ENV}`;
  }
}
